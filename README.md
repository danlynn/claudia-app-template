# Template: Claudia.js

-

## What is claudia-app-template?

claudia-app-template as it appears in this repo is a set of config files and shell scripts that make doing claudia development using the [claudia docker image](https://hub.docker.com/r/danlynn/claudia/) more enjoyable.

## What is Claudia.js?

According to the [Claudia.js website](https://www.claudiajs.com), Claudia.js is an:

> Opensource deployment tool for Node.js projects, helping JavaScript developers use AWS Lambda and API Gateway easily.

![claudia.js logo](https://raw.githubusercontent.com/danlynn/claudia/master/claudiajs.png)

This means that it is a great way to develop and deploy node.js projects on AWS.  It vastly simplifies the process of getting up and going by doing handling all the deployment configuration and tasks for you.  Go and check-out the [hello-world tutorial](https://www.claudiajs.com/tutorials/hello-world-lambda.html) on the Claudia.js website now (if you haven't already).

## How to use

The full description of how to use this template can be found in the README for the [claudia docker image](https://hub.docker.com/r/danlynn/claudia/) on the Docker Hub site.  Go there NOW to see a short hello-world tutorial using this template and the docker image.

Assuming that you already have Docker installed, you can create a new Claudia.js project and install this template using the following commands.  Note that there is no need to install anything!  The docker image contains everything that you need.

```bash
$ docker run --rm -it -v "$(pwd):/myapp" danlynn/claudia:latest install-claudia-app-template
```

This one command will pull the claudia docker image from Docker Hub and run the install-claudia-app-template command which will install this template in the current directory on your laptop.

Note that you can alternatively provide a specific claudia version by replacing `latest` in the command above with a Claudia.js version like `2.9.0`.

## What is in the template?

This template consists the following files:

<pre>
.aws
    config
    credentials
.claudia-version
.gitignore
TEMPLATE-README.md
bash
logs
synctime
</pre>

The `bash`, `logs`, and `synctime` are helper scripts that you can use to interact with the claudia docker image.

The `config` and `credentials` in the `.aws` directory are default config files that you can edit to provide your own credentials and preferences for aws region, etc.

The .gitignore simply lists the `.aws` directory to be ignored.

The `TEMPLATE-README.md` is this documentation that you are currently reading.

The `.claudia-version` contains the docker image version to be used by the helper scripts.  It is automatically assigned when you run the `install-claudia-app-template` command with the docker image.
