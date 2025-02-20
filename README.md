# Configuração de Ambiente com Script

Este repositório contém um script para configurar o ambiente de desenvolvimento em um sistema macOS. O script realiza as seguintes ações:

1. Atualiza os pacotes do sistema.
2. Verifica se o Homebrew está instalado e, se não estiver, instala-o.
3. Atualiza o Homebrew.
4. Instala o Python.
5. Define o Python 3 como a versão padrão.

## Como usar

1. Clone este repositório:
    ```bash
    git clone https://github.com/charllys/config.py.git
    cd config.py
    ```

2. Torne o script executável:
    ```bash
    chmod +x script.sh
    ```

3. Execute o script:
    ```bash
    ./script.sh
    ```

## Observações

- Certifique-se de que você tem permissões de administrador, pois o script requer sudo para atualizar os pacotes do sistema.
- O script foi testado no macOS e pode não funcionar corretamente em outros sistemas operacionais.

## Contribuição

Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias ou correções.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
