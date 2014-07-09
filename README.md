BorisBikes
==========

### Makers Academy - Week 3

This task was set by Enrique Comba Riepenhausen
[@ecomba](http://twitter.com/ecomba) whilst learning to code at
[Makers Academy](http://www.makersacademy.com). The purpose was to build
an object oriented model loosely based on TFL Cycle Hire scheme.

We started by writing CRC cards (Class, Responsibilities, Collaborators) with pen and paper (examples below). We set out our domain model (example below) and then used RSpec to develop it using TDD.


#### Class Bike - example CRC card:

| Responsibilities          | Collaborators |
| :-------------------      | :------------ |
| can be rented             | User          |
| can be returned [docked]  | Station       |
| can break                 | Van           |
| can be fixed              | Garage        |

#### Class Van - example CRC card:

| Responsibilities                                     | Collaborators |
| :--------------------------------------------------- | :------------ |
| can pick up broken bikes                             | Station       | 
| can deliver broken Bikes                             | Garage        |
| can collect fixed Bikes              |               | Bike          |

#### Domain Model:

We are building a system that manages bikes that can be rented by users from docking stations and returned there at the end of the rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There is a garage that can fix broken bikes. A van is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, all stations and the garage have fixed capacity, so they cannot take more bikes than they can hold.
