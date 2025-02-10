Profile: PLBaseServiceRequestOrder
Parent: ServiceRequest
Id: pl-base-servicerequest-order
Title: "Service Request: Order (PL)"
Description: "Dane zlecenia"
* ^version = "0.1.0"
* identifier 1..* MS
* intent = #order
* subject only (PLBasePatient)
* encounter only (PLBaseEncounter)

