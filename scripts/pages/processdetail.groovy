import org.craftercms.blueprints.headless.ProcessSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
def searchHelper = new ProcessSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.processType_o.item.key

def processes = searchHelper.searchProcess(category.text,0,3)


def categories = new TaxonomySearchHelper("process", elasticsearch, siteItemService)
						.getItems()

println("List process")
println(processes)

println("Taxonomy")
print(categories)
						
templateModel.categories = categories
templateModel.processes = processes