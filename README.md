# FoodTruck

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Setting up application

### Setup database

```bash
mix ecto.create
mix ecto.migrate
```

### Import data

Open your db client of choice and import the csv file with the following command:

COPY trucks(
id,
applicant,
facility_type,
cnn,
location_description,
address,
blocklot,
block,
lot,
permit,
status,
food_items,
x,
y,
latitude,
longitude,
schedule,
dayshours,
noi_sent,
approved,
received,
prior_permit,
expiration_date,
location,
fire_prevention_districts,
police_districts,
supervisor_districts,
zip_codes,
neighborhoods
)
FROM 'path-to-my-csv-file.csv'
DELIMITER ','
CSV HEADER;

## API documentation

FoodTruck is a very simple application with the following endpoints:

* GET /api/trucks - gets all the trucks in the database
* GET /api/trucks/:id - gets a single truck, 404 in case it was not found
* POST /api/trucks/get - gets trucks matching the given parameters in the body, no match is an empty list
* POST /api/trucks - creates or updates a truck (id field is mandatory)
* DELETE /api/trucks/:id - deletes a single truck

Tip:
The file postman-foodtruck.json can be imported in to postman and be used to test the API.
