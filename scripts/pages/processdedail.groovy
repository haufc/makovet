import org.craftercms.blueprints.headless.ProcessSearchHelper

def searchHelper = new ProcessSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.processType_o.key

def processes = searchHelper.searchProcess(category.text,0)
println "Processssssssssssssssssssssssssssssss"
print processes
templateModel.processes = processes