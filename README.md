<p align="center">
  <div align="center">
    <img src="images/logos/uw-crest.svg" alt="Logo" style="height:150px">
  </div>
</p>

# UW Jekyll Template

This is a [Jekyll](https://jekyllrb.com) based website that is based upon the [Al-Folio](https://github.com/alshedivat/al-folio) framework and incorporates styling from the standard [UW HTML template](https://brand.wisc.edu/resource/html-templates/).

<img src="images/screen-shots/home.png" align="center" style="border:2px solid grey">
<div align="center">UW Jekyll Template Home Page</div>
<br />

## Applications

The UW Jeckyll Template is intended to support the development of websites for the the following types of University of Wisconsin people and organizations:

- department
- lab
- researcher or person
- organization 

## Features

The UW Jeckyll Template has built-in support for the following capabilities:

- blog
- list of publications
- list of projects
- list of GitHub repositories
- CV
- teaching, description of course materials

## Running

Simply run the following command to start the Jekyll app:

#### Local Setup (Standard)

Assuming you have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Bundler](https://bundler.io/) installed on your system:

```bash
sh run.sh
```

The application will be visible at the following url:
```
http://127.0.0.1:4000/uw-jekyll-theme/
```

#### Local Setup (Using Docker)

If you are running on Windows, we recommend that you run this application using Docker, which can be peformed as follows:

- First, install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/).
- Finally, run the following command that will pull a pre-built image from DockerHub and will run your website.

```bash
$ docker-compose up
```

Note that when you run it for the first time, it will download a docker image of size 300MB or so.

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.