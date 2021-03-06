#!/bin/bash
rails g model state name acronym
rails g model city name capital:boolean state:references

rails g scaffold sector name acronym status:boolean
rails g scaffold job name description:text status:boolean

rails g scaffold affiliate cep responsible geolocation  city:references state:references 

rails g scaffold work_type name status:boolean
rails g scaffold work name local geolocation responsible work_type:references affiliate:references

rails g scaffold foothold name local responsible geolocation observation:text affiliate:references work:references

rails g devise user name code cpf job_function sector:references job:references status:boolean address:text city:references state:references foothold:references affiliate:references work:references

rails g scaffold benefit name description:text default_value:float observation:text status:boolean
rails g scaffold cost value:float user:references benefit:references

rails g scaffold provider_type name status:boolean
rails g scaffold provider name cnpj address:text telphone fax cep state:references city:references state_number email contact_name contact_telphone contact_email observation:text work:references affiliate:references provider_type:references

rails g scaffold payment_type name account bank status:boolean
rails g scaffold payment value:float description:text status:boolean deadline:date provider:references payment_type:references
rails g scaffold vehicle_service name description:text observation:text status:boolean
rails g scaffold vehicle_type name description:text status:boolean
rails g scaffold vehicle name description:text patrimony status_vehicle:integer vehicle_plate vehicle_type:references vehicle_service:references provider:references

rails g scaffold desk_supplie name address:text telphone geolocation city:references state:references

rails g scaffold vehicle_consumption vehicle:references km_start:float km_end:float gas_liter:float value_liter:float date:date number_notes:text observation:text desk_supplie:references  driver:references 
