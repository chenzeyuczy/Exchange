express = require 'express'
router = express.Router()
WishModel = require '../db/models/wish.coffee'
mockData = require '../test/mock-data.coffee'

###
* render 'index' when get '/'
###
router.get '/', (req, res)->
    WishModel.find {}, (err, wishes)->
        if err
            res.status(500).send "Server Error"
        else
            console.log wishes
            res.render 'index', wishes: wishes

module.exports = router

