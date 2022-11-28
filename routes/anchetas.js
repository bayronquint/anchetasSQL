const {Router} = require('express')
const router = Router()
const {getAnchetas,postAnchetas, updateAnchetas, deleteAnchetas} = require('../controller/anchetas')
const {validateCreate} = require('../validators/anchetas')

router.get('/',getAnchetas)
router.post('/', validateCreate, postAnchetas)
router.put('/',updateAnchetas)
router.delete('/',deleteAnchetas)

module.exports = router