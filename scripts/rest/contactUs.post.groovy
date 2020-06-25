import org.craftercms.blueprints.services.MailService

println "Processing Contact Us Request with values:"
println params

def service = new MailService()
// SMTP server information:
service.host= smtp.gmail.com
service.port= 587

service.sendEmail(params.email, "haufc1997@gmail.com", "anhnt@keysoft.vn", params.title ,
                  "/templates/mail/mail.ftl",[data:"modle", "of":"theTemplate"])
