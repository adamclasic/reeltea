<br />
<p align="center">
  <a href="https://https://github.com/adamclasic/reeltea">
    REELTEA
  </a>

  <h3 align="center">Reeltea</h3>

  <p align="center">
    Idea sharing app.
    <br /><br/>
    <a href="https://reeltea.herokuapp.com"><strong>VIEW DEMO »</strong></a>
    <br />
    <br />
   
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

The project is about a platform for sharing ideas. An authenticated user is allowed to post a vyew (idea) and his/her followers downvote or upvote the idea. The user has to follow other users in order to see their Reeltea.

### Built With

The app has been built using the following tools:

- Rails
- Postgresql
- Cloudinary
- Bootstrap
- Sass

## Getting Started

To test the app locally, feel free to clone the repository and follow the instructions below.

### Installation

1. Get a free cloudinary API Key at [https://cloudinary.com](https://cloudinary.com)
2. Clone the repo

```sh
git clone https://https://github.com/adamclasic/reeltea.git
```

3. Install the gems

```sh
bundle install
```

4. copy your cloudinary.yml file downloaded from cloudinary website to `config/` folder

5) create the database by running

```sh
rails db:create
```

5. Migrate your database

```sh
rails db:migrate
```

5. Finally fire up your server and you'll be able to access the app on http://localhost:3000 in your browser.

```sh
rails s
```

### Testing 
1. To run tests for the app, open terminal, navigate to the project directory and just type the following command:
```sh
bundle exec rspec
```

## Roadmap

See the [open issues](https://https://github.com/adamclasic/reeltea/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

## 👤 Contact

Adam Allalou - [@adamclasic](https://twitter.com/adamclasic) - aabou9@gmail.com

Project Link: [https://https://github.com/adamclasic/reeltea](https://https://github.com/adamclasic/reeltea)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- Microverse
- Heroku
- Bootstrap
- Font Awesome

[product-screenshot]: screenshot.png
