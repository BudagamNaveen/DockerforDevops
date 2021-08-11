node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/repositories', 'budagamnaveen') {

        def customImage = docker.build("indeximagenaveen:${env.BUILD_ID}")
        /* Push the container to the custom Registry */
        customImage.push()
    }
}
