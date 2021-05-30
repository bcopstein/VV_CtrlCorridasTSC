Bloco <properties> precisa ser colocado depois das dependências do spring-boot serem declaradas.
Tua class "Application" não contém um "main", quem tem isso é o spring, então ele precisa sobrescrever
essa propriedade para ti.
No final das contas, eu só movi o bloco <properties> para o final do arquivo

# Comandos para rodar no Docker

1. Fazer build da aplicação usando: mvn clean install (rodar isso dentro do devcontainer/VSCode)

2. Fazer build da docker image: docker build -t corredor8:latest . (rodar isso de dentro do linux/wsl)
    - Aqui, "-t" significa "tag", ou seja, estamos dando um nome para a imagem
    - Se existir outra imagem com o nome corredor8:latest, ela será substituida

3. Rodar imagem: docker run --rm -p 8080:8080 corredor8
    - Aqui, "--rm" significa "remover este container ao final da sua execução"
    - Aqui, "-p" 8080:8080 indica que a porta 8080 do container deve ser exposta e mapeada na
    porta 8080 do ambiente externo

Desnecessário:
Para identificar o nome das imagens:
- docker container ls

Para verificar o número ip da imagem
- docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <nome da imagem>