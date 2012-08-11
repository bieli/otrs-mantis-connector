otrs-mantis-connector
=====================

OTRS 3.x (helpdesk system) package for adding issues into MantisBT (bugtracker system) from OTRS (helpdesk system)


What is this ?
---------------------
This is open source project for connecting flow two open source products:
 * OTRS 3.x (helpdesk system) - http://otrs.org
 * mantisbt 1.2.x (bug tracker system) - http://mantisbt.org

What was motivating ?
---------------------

Disscusion on OTRS Idea forum -> https://otrsteam.ideascale.com/a/dtd/Compatibility-with-Mantis/383012-10369

What is exactlly connectiing ?
---------------------
   > It would be nice to have an "Export to..." button for the ticket, which would allow us to export (preferably some
   > selected info/notes/etc) to a bug tracking system or somewhere else, like Mantis for our case.
   >
   > So, by clicking that button we would get an issue in Mantis with a generated number, summary and description of the
   > issue linked to the OTRS ticket. Meaning that there would be a link in OTRS to the Mantis issue and a link in Mantis
   > to the OTRS ticket.
   >
   > The last one, the link to OTRS ticket, is easy to be made at the moment, but it would be made manually and it would
   > take some time adding one for every issue that appears.


What solutions are used ?
---------------------

Integrating application by HTTP REST API.

At the OTRS side :
 * otrs-mantis-package - complete plugin for OTRS Package Manager, which allow agents for export ticket to MantisBT
  * RESTfull HTTP Perl Client connection with dedicated MantisBT REST-API

At the MantisBT side:
 * new functionality REST-API for simplify connecting with MantisBT (instead of older existing NuSoap API)

