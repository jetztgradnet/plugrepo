package net.jetztgrad.plugrepo


class RemoteRepoUpdaterJob {
	// update every 4 hours
	static triggers = {
		cron name:'PeriodicRemoteRepoUpdater', startDelay:10000, cronExpression: '0 0 0/4 * * ?'
		simpleTrigger startDelay:10000, repeatCount: 0, name: 'UpdateAtProgramStart'
	}
	def group = 'Repository'

	def remoteRepositoryService

    def execute() {
		// execute task
		log.info "updating remote repositories"
		try {
			remoteRepositoryService.update()
		}
		catch (Throwable t) {
			log.error "failed to update remote repositores: " + t.message
			log.debug "details: ", t
		}
    }
}
