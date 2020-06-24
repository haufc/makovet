import org.craftercms.blueprints.headless.GroupProductSearchHelper

def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(null,0)

templateModel.products = products