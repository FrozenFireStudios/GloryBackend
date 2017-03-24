# glory_backend

A backend application built with [aqueduct](https://github.com/stablekernel/aqueduct) to support the [Vainglossary iOS App](https://github.com/FrozenFireStudios/Glory)

The application stores character and item data that may eventually be available in the MadGlory API.

The application also loads matches from the MadGlory API, stores them and then generates match up data for every pair of characters: How many times they played with and against each other, how often they won in these situations.  The application supplies this matchup data to the iOS app to use for live draft recommendations.

Currently the match pulls must be triggered by an admin call including a user name of whose matches should be pulled.  It would be nice if the MadGlory API could eventually post leaderboards of the players with the best ELO ratings in the different regions, that the application could use to automatically pull matches from the top players for each new patch.
