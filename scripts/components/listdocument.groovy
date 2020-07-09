import org.craftercms.blueprints.headless.DocumentSearchHelper
import org.craftercms.blueprints.headless.DocumentPDFSearchHelper

def searchHelper = new DocumentSearchHelper(elasticsearch, urlTransformationService)
def searchPDFHelper = new DocumentPDFSearchHelper(elasticsearch, urlTransformationService)

def docs = searchHelper.searchdocs(0)
def docsPDF = searchPDFHelper.searchdocs(0)

templateModel.docs = docs
templateModel.docsPDF = docsPDF
