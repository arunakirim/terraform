//Map
variable "users_UAT" {
  type = map(string)
  default = {
    "username" = "Arunagiri",
    "email" : "arun@mega.com"
    "phonenumber" : "89796070"
  }
}

//Set
variable "users_UAT_set" {
  type    = set(string)
  default = ["Arunakiri", "Parkavi", "Aadthi"]
}

//Tuples
variable "users_UAT_tuples" {
  type    = tuple([string, number, number, string])
  default = ["Arun", 1, 998989, "Woodlands"]
}
//boolean
variable "User_exists" {
  type    = bool
  default = true
}

//string
variable "Users_details" {
  type = object({
    name           = string,
    address        = string,
    phonenumber    = number,
    age            = number,
    married_status = bool,
    favoritefood   = list(string),
    department     = string
  })
  default = {
    name : "Aunakiri",
    address : "woodlands",
    phonenumber    = 778698797,
    age            = 23,
    married_status = false,
    favoritefood   = ["Mutton", "Fish"],
    department     = "Finance"
  }
}
