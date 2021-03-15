# StereoSpirits

## Gig
* belongs_to :user
* belongs_to :band
* title,  owner, associated bands, details
---

## Band
* has_many :gigs
* has_many :users, through: :gigs
* name, members, description
---

## User
* has_many :gigs
* has_many :bands, through: :gigs
* username
* password
* email
* 
---