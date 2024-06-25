# ZZBot

ZZBot is essentially a repository created to simplify the deployment of [JMusicBot](https://github.com/jagrosh/MusicBot) using Docker.

## Instructions

1. Install [Docker](https://docs.docker.com/engine/)

    ```bash
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh ./get-docker.sh --dry-run
    ```

2. Clone repository with Git

    ```bash
    git clone https://github.com/jbuet/zzbot.git
    ```

3. Follow instructions to create a bot app on discord [Configure the bot](https://jmusicbot.com/setup/#3-configure-the-bot). You need to obtain a user id and a token.
4. [Add your bot to your server](https://jmusicbot.com/adding-your-bot/)
5. Create an environment variables file with the name **.env** and the following values. Replace the values of **TOKEN** and **USER_ID**.

    ```bash
    TOKEN=CHANGEME
    USER_ID=CHANGEME
    CUSTOM_PREFIX=!
    ```

6. Run the following command:

    ```bash
    cd zzbot/
    docker compose up -d
    ```

## Acknowledgements

This project uses [JMusicBot](https://github.com/jagrosh/MusicBot), which is licensed under the Apache 2.0 License
