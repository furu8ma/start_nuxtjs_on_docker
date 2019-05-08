# start_nuxtjs_on_docker
minimal environment for running nuxt.js on docker

## How to start nuxt.js project

- docker-compose run vue yarn create nuxt-app [project_name]
- choose progressive web application and yarn.
- edit docker-compose.yml 

if your [prject_name] is nuxt_test

```
    ports:
      - 3000:3000
# After a project created,
# If you want node.js automatically,
# - Update [project_name] to your project name.
# - Uncomment blow 2 line.
#
#   working_dir: /root/[project_name]/
#   command: yarn dev

       ↓ 

    ports:
      - 3000:3000
    working_dir: /root/nuxt_test/
    command: yarn dev
```
- edit work/[project_name]/nuxt.config.js

```
export default {
  mode: 'universal',

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,

       ↓ 

export default {
  mode: 'universal',

  server: {
    port: 3000,
    host: '0.0.0.0',
  },

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,

```


- docker-compose up

- access blow url

http://localhost:3000
