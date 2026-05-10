sudo apt install htop
nvidia-smi
sudo apt update && sudo apt install docker.io -y
sudo docker run hello-world
sudo docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
sudo docker ps
sudo docker exec -it my-postgres psql -U postgres
CREATE TABLE cases (
    id serial PRIMARY KEY,
    title text,
    reward integer
);
INSERT INTO cases (title, reward) VALUES ('Fake Job Scam prevention', 5000);
SELECT * FROM cases;
