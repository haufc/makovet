import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productgrouplv2_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0)

def groupParent = contentModel.productgrouplv1_o.item.value
printnl "========================="
println  productGroup.text
print groupParent

templateModel.productOther = relatedProducts