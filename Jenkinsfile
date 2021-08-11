node {
    checkout scm

    docker.withRegistry('http://hub.docker.com', 'budagamnaveen') {

        def customImage = docker.build("budagamnaveen/indeximagenaveen")
        /* Push the container to the custom Registry */
        customImage.push()
    }
}
