import org.craftercms.blueprints.headless.SupportTechEnSearchHelper

def searchHelper = new SupportTechEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.supportTech_s

def supportTech = searchHelper.searchSupportTech(category,0)
templateModel.supportTech = supportTech