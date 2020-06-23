import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productgrouplevel2_s

def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(productGroup,0)

templateModel.products = products