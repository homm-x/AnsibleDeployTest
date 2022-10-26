docker rm -f ansible_server08
docker rm -f ansible_server09
docker-compose -f ./docker-compose.yml up --build -d
ssh-keygen -R 172.50.0.108
ssh-keygen -R 172.50.0.109
ssh-copy-id -o StrictHostKeyChecking=no -i $HOME/.ssh/id_rsa.pub mug@172.50.0.108
ssh-copy-id -o StrictHostKeyChecking=no -i $HOME/.ssh/id_rsa.pub mug@172.50.0.109
