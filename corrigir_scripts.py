import os
import re

def purificar_e_blindar_sql(caminho_arquivo):
    with open(caminho_arquivo, 'r', encoding='utf-8', errors='ignore') as f:
        # Lendo as linhas e guardando na variável correta
        linhas = f.readlines()

    conteudo_limpo = []
    
    # Injeta a blindagem global de SQL_MODE no topo absoluto do arquivo
    conteudo_limpo.append('SET SQL_MODE = "";\n')
    conteudo_limpo.append('SET FOREIGN_KEY_CHECKS = 0;\n')
    
    # CORRIGIDO: Agora usando 'linhas' corretamente
    for linha in linhas:
        # 1. Remove redefinições internas de SQL_MODE que o dump tenta forçar no meio do caminho
        if 'SET SQL_MODE' in linha:
            continue
            
        # 2. Remove o comentário condicional de criptografia do MySQL 8
        linha = re.sub(r'\/\*!80016 DEFAULT ENCRYPTION=\'N\' \*\/', '', linha)
        
        # 3. Corrige agrupamentos de caracteres incompatíveis (Collate)
        linha = linha.replace('utf8mb4_0900_ai_ci', 'utf8mb4_general_ci')
        linha = linha.replace('utf8mb4_0900_bin', 'utf8mb4_bin')
        
        # 4. Transforma o motor antigo MyISAM em InnoDB nativo
        linha = re.sub(r'ENGINE=MyISAM', 'ENGINE=InnoDB', linha, flags=re.IGNORECASE)
        
        # 5. Remove travas de DEFINER de Views e Triggers
        linha = re.sub(r'DEFINER=`.*?`@`.*?`', '', linha)
        linha = re.sub(r'DEFINER=\s*CURRENT_USER', '', linha)
        
        conteudo_limpo.append(linha)

    # Reescreve o arquivo purificado
    with open(caminho_arquivo, 'w', encoding='utf-8') as f:
        f.writelines(conteudo_limpo)
        
    print(f"✓ Arquivo totalmente compatibilizado: {caminho_arquivo}")

# Lista exata dos seus 6 arquivos na pasta init-scripts
arquivos_projeto = [
    "01-jedi-communications.sql",
    "02-jedi-educa.sql",
    "03-jedi-logs.sql",
    "04-jedi-permissions.sql",
    "05-mad-api.sql",
    "06-jedieduca.sql"
]

print("Iniciando purificação dos scripts para MariaDB 11.4.2...")

for arq in arquivos_projeto:
    if os.path.exists(arq):
        purificar_e_blindar_sql(arq)
    else:
        caminho_subpasta = os.path.join("init-scripts", arq)
        if os.path.exists(caminho_subpasta):
            purificar_e_blindar_sql(caminho_subpasta)
        else:
            print(f"⚠ Aviso: Arquivo não encontrado: {arq}")

print("Pronto! Todos os cabeçalhos foram blindados com SQL_MODE flexível.")