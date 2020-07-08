import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def results = searchHelper.searchProducts(params.q)
println results
results.each{ product ->
 product.highlight = product.highlight.replaceAll("\\<.*?\\>", "");
 
 if (product.highlight.length() > 100) {
     product.highlight = product.highlight.substring(0,100)
     product.highlight += "..."
 }
}

return results