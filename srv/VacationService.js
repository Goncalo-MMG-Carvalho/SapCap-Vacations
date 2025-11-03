const LOG = cds.log('VacationSevice');

export default cds.service.impl( function() {
    this.before('CREATE', ['VacationRequest'], async req => {
        req.data.submitionDate = Date.now;
    });

    this.after('Update', ['VacationRequest'], async req => {
        if( !req.data.status) 
            return;

        LOG.info("Vacation Request is now " + req.data.status);
    });
});