import org.craftercms.blueprints.headless.GroupProductEnSearchHelper

def searchHelper = new GroupProductEnSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchHotProducts(true,0,5)
templateModel.products = products