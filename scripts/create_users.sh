#!/bin/bash

echo "Criando usuários do sistema..."

useradd isaac -c "Isaac Asimov" -m -s /bin/bash
passwd isaac
passwd isaac -e

useradd frank -c "Frank Herbert" -m -s /bin/bash
passwd frank
passwd frank -e

useradd arthur -c "Arthur Conan Doyle" -m -s /bin/bash
passwd arthur
passwd arthur -e

echo "Finalizado!!"