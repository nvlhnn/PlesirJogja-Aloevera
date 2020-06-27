<?php

return [
    /*
    |
    |--------------------------------------------------------------------------
    | Flare API key
    |--------------------------------------------------------------------------
    |
    | Specify Flare's API key below to enable error reporting to the service.
    |
    | More info: https://flareapp.io/docs/general/projects
    |
    */

    'key' => env('FLARE_KEY'),

    /*
    |--------------------------------------------------------------------------
    | Reporting Options
    |--------------------------------------------------------------------------
    |
    | These options determine which information will be transmitted to Flare.
    |
    */

    'reporting' => [
        'anonymize_ips' => true,
        'collect_git_information' => true,
        'report_queries' => true,
        'maximum_number_of_collected_queries' => 200,
        'report_query_bindings' => true,
        'report_view_data' => true,
    ],
];
