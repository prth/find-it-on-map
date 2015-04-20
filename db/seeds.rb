# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


SystemLanguage.create(name: "English",locale: "en",code: "en") 1
SystemLanguage.create(name: "Gujarati",locale: "gu",code: "gu") 2
SystemLanguage.create(name: "Hindi",locale: "hi",code: "hi") 3
SystemLanguage.create(name: "Marathi",locale: "mr",code: "mr") 4
SystemLanguage.create(name: "Tamil",locale: "ta",code: "ta") 5

Location.create(localityname: "India", locationtype: "0", latitude: "19.079767", longitude: "73.010018") 1
Location.create(localityname: "Maharashtra", locationtype: "1", latitude: "19.079767", longitude: "73.010018") 2
Location.create(localityname: "Mumbai, Maharashtra", locationtype: "2", latitude: "19.079767", longitude: "73.010018") 3
Location.create(localityname: "Navi Mumbai, Maharashtra", locationtype: "2", latitude: "19.079767", longitude: "73.010018") 4
Location.create(localityname: "Bandra, Mumbai, Maharashtra", locationtype: "3", latitude: "19.079767", longitude: "73.010018") 5
Location.create(localityname: "Powai, Mumbai, Maharashtra", locationtype: "3", latitude: "19.079767", longitude: "73.010018") 6

Location.create(localityname: "Vashi, Navi Mumbai, Maharashtra", locationtype: "3", latitude: "19.079767", longitude: "73.010018") 7
Location.create(localityname: "Nerul, Navi Mumbai, Maharashtra", locationtype: "3", latitude: "19.079767", longitude: "73.010018") 8


Doctor.create(name: "Dr Sharma", email: "sharma@doctor.com", speciality: "primary", address: "sector 17, vashi, navi mumbai, maharashtra", locality: 7, city: 4, state: 2, country: 1)


Doctor.create(name: "Dr Gupta", email: "gupta@doctor.com", speciality: "primary", address: "sector 15, vashi, navi mumbai, maharashtra", locality: 7, city: 4, state: 2, country: 1)

Doctor.create(name: "Dr Singh", email: "singh@doctor.com", speciality: "primary", address: "sector 15, vashi, navi mumbai, maharashtra", locality: 8, city: 4, state: 2, country: 1)


Doctor.create(name: "Dr Shah", email: "shah@doctor.com", speciality: "primary", address: "sector 15, bandra, mumbai, maharashtra", locality: 5, city: 3, state: 2, country: 1)

Doctor.create(name: "Dr Mehta", email: "mehta@doctor.com", speciality: "primary", address: "sector 14, powai, mumbai, maharashtra", locality: 6, city: 3, state: 2, country: 1)


Doctor.create(name: "Dr Shah", email: "shah@doctor.com", speciality: "primary", address: "sector 14, vashi, navi mumbai, maharashtra", locality: 15, city: 12, state: 10, country: 9, latitude: 19.083944, longitude: 73.002551)


Doctor.create(name: "Dr Mehta", email: "mehta@doctor.com", speciality: "primary", address: "sector 12, vashi, navi mumbai, maharashtra", locality: 15, city: 12, state: 10, country: 9, latitude: 19.079280, longitude: 73.000062)

Doctor.create(name: "Dr Singh", email: "singh@doctor.com", speciality: "primary", address: "sector 11, vashi, navi mumbai, maharashtra", locality: 15, city: 12, state: 10, country: 9, latitude: 19.070803, longitude: 72.997401)

Doctor.create(name: "Dr Sharma", email: "sharma@doctor.com", speciality: "primary", address: "sector 7, vashi, navi mumbai, maharashtra", locality: 15, city: 12, state: 10, country: 9, latitude: 19.073156, longitude: 73.009589)

Doctor.create(name: "Dr Gupta", email: "gupta@doctor.com", speciality: "primary", address: "sector 5, vashi, navi mumbai, maharashtra", locality: 15, city: 12, state: 10, country: 9, latitude: 19.086945, longitude: 73.013580)



DoctorTranslation.create(doctor_id: 9, system_language_id: 2,name: "डॉ शर्मा",address: "सेक्टर 7 , वाशी , नवी मुंबई, महाराष्ट्र")