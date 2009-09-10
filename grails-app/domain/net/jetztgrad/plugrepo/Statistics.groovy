package net.jetztgrad.plugrepo

class Statistics {
	Integer downloads = 0
	Integer uploads = 0
	
    static constraints = {
		downloads(nullable: false)
    }
}
