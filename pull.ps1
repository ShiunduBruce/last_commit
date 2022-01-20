#i539683/simplewhale:latest
#Simple powershell script to pull an image from the dockerhub
# Image name lastcommitimage
# Docker id : 
# Password : 

Write-Host "To pull an image please provide the docker login credentials"

$docker_id= Read-Host -Prompt "Docker id: "
$password= Read-Host -Prompt "Password : "

docker login -u $docker_id --password $password

Write-Host "Please provide the image name and version"
$image_name= Read-Host -Prompt "Image name: "

docker pull $image_name
# docker stop simple_app

docker run --name simple_app -dp 5000:5000 $image_name
