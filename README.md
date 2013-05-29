Magnet.cl - ROR TEMPLATE
========================

**Default paths:**

* Admin interface -> '/admin'
* User login -> '/login'

**Default admin credentials:**

* user :      'don@magnet.cl'
* password :  'magnetos'

Automatic deployment
--------------------

The following variables in `config/deploy.rb` must be set:

    * `:set application, "app-name"`: Application name
    * `:set repository, "git@url:project.git`: Git repository url
    * `:set web, "127.0.0.1": Server IP address
    * `:set db, "127.0.0.1": DB server IP address

To print the list of available tasks, type:

`cap -T`

Each task must be ran as follows:

`cap <task>`

**Code deployment tasks:**

    * `deploy:setup`: Prepares the server for deployment.
    * `deploy:check`: Tests deployment basic dependencies.
    * `deploy:update`: Copies the project and updates the symlink (also installs dependencies).
    * `deploy:migrate`: Runs the migrate rake task.

**Project management tasks:**

    * `project.start`: Starts the server.
    * `project.stop`: Stops the server.

**DB management tasks:**

    * `db:init`: Database initialization.

For example, for the initial deployment of the project, you should ran:

    1. `cap deploy:setup`
    2. `cap deploy:check`
    3. `cap deploy:update`
    4. `cap db:init`
    5. `cap project.start`

