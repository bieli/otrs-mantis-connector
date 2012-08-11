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

Disscusion on OTRS Idea forum -> 

What is exactlly connectiing ?
---------------------



What solutions are used ?
---------------------

Integrating application by HTTP REST API.

At the OTRS side :
 * otrs-mantis-package - complete plugin for OTRS Package Manager, which allow agents for export ticket to MantisBT
  * RESTfull HTTP Perl Client connection with dedicated MantisBT REST-API

At the MantisBT side:
 * new functionality REST-API for simplify connecting with MantisBT (instead of older existing NuSoap API)

