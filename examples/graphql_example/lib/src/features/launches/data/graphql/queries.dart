const getLauncesQuery = r'''query Launches {
  launches {
    id
    details
    launch_date_unix
    launch_site {
      site_id
      site_name
      site_name_long
    }
    mission_name
    upcoming
    launch_success
    rocket {
      rocket {
        id
        name
        stages
        type
        first_flight
        country
        description
        company
        active
      }
    }
  }
}''';

const getLauncesDetailsQuery = r'''query Launch($launchId: ID!) {
  launch(id: $launchId) {
    id
    details
    launch_date_unix
    launch_site {
      site_id
      site_name
      site_name_long
    }
    mission_name
    upcoming
    launch_success
    rocket {
      rocket {
        id
        name
        stages
        type
        first_flight
        country
        description
        company
        active
      }
    }
  }
}''';
