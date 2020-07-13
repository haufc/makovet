import org.craftercms.blueprints.headless.GroupProductEnSearchHelper

def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(null,null,0,5)

templateModel.products = products