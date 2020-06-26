import org.craftercms.blueprints.headless.SupportTechSearchHelper

def searchHelper = new SupportTechSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.technicalAssistance_o.item.key

def supportTech = searchHelper.searchSupportTech(category.text,0)
templateModel.supportTech = supportTech