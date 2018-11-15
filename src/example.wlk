/** First Wollok example */
object wollok {
	method howAreYou() {
		return 'I am Wolloktastic!'
	}
}

class Profesional{
	var property tipo
	var property universidad
	var property honorario
	var property provincia
	var property nombre	
	
	method dondeEstudio(uni){
		universidad = uni
		return uni.nombre()
	}
	
	method honorarioPorHora(){
		if (self.tipo() == "Vinculado"){
		 	honorario = universidad.honorario()
		 	return universidad.honorario()
		 	}
		 	
		 else if (self.tipo() == "Litoral"){
		 	honorario = 3000
		 	return 3000
		 } 	
		 else{
		 	return honorario
		 }
	} 

	method enQueProvinciaPuedeTrabajar(){
		if (self.tipo() == "Vinculado"){
		 	provincia = universidad.enQueProvinciaEsta()
		 	return universidad.enQueProvinciaEsta()
		 	}
		 else if (self.tipo() == "Litoral"){
		 	provincia = ["Entre Ríos","Santa Fe","Corrientes"]
		 	return ["Entre Ríos","Santa Fe","Corrientes"]
		 } 	
		 else{
		 	return provincia
		 }
	}
}

class Universidad{
	var property provincia
	var property honorario
	var property nombre
	
	method enQueProvinciaEsta(){
		return provincia
	}
	
	method honorarioPorHoraRecomendado(pesos){
		honorario = pesos
		return honorario
	}
}
	
class Empresa{
	var honorario
	var property profesionales = []
	var property uniformadoras = []
	
	method agregarProfecional(prof){
		profesionales.add(prof)
	}
	
	method honorarioDeReferencia(pesos){
		honorario = pesos
		return honorario
	}
	
	method profecionalesCaros(){
		var profcaro =  profesionales.filter({prof => prof.honorario() > honorario})
			return profcaro.size()
		}
		
		
	method UniversidadesFormadoras(){
		var uniFor = profesionales.map{prof => prof.universidad().nombre()}
		return uniFor.asSet() 
	 }
	 	
	
	method ProfecionalBarato(){
		var profBarato = profesionales.map{prof => prof.honorario()}
			return profBarato.min()
	}
	
	method ProvinciaCubierta(prov){
		var uniFor = profesionales.map{prof => prof.provincia()}
		return uniFor.asSet().contains(prov)
	}
	
	method cuantosProfecionalesEstudiaronEn(){
		
	}
	
}


