#!/bin/bash

git_push() {
    echo "Adicionando arquivos..."
    git add .
    
    echo "Digite a mensagem do commit:"
    read mensagem
    
    echo "Fazendo commit..."
    git commit -m "$mensagem"
    
    echo "Fazendo push..."
    git push
    
    echo "Concluido!"
}

instalar_deps() {
    echo "Ativando ambiente virtual e instalando dependencias..."
    source .venv/bin/activate
    pip install -r requirements.txt
    echo "Dependencias instaladas!"
}

rodar_servidor() {
    echo "Iniciando servidor Flask..."
    source .venv/bin/activate
    python3 app.py
}

ver_arquivos() {
    echo "Arquivos do projeto:"
    ls -la
}

echo "COMANDOS DO PROJETO FLASK"
echo "1) Git push completo"
echo "2) Instalar dependencias"
echo "3) Rodar servidor Flask"
echo "4) Ver arquivos"
echo "5) Sair"
echo -n "Escolha uma opcao: "

read opcao

case $opcao in
    1) git_push ;;
    2) instalar_deps ;;
    3) rodar_servidor ;;
    4) ver_arquivos ;;
    5) echo "Tchau!" ;;
    *) echo "Opcao invalida!" ;;
esac
