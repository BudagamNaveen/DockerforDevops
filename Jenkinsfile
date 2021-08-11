node {
    checkout scm

    docker.withRegistry('https://index.docker.io', 'budagamnaveen') {

        def customImage = docker.build("budagamnaveen/indeximagenaveen")
        /* Push the container to the custom Registry */
        customImage.push()
    }
}
