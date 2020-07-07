import org.craftercms.blueprints.headless.DocumentSearchHelper

def searchHelper = new DocumentSearchHelper(elasticsearch, urlTransformationService)
def docs = searchHelper.searchdocs(0)

templateModel.docs = docs