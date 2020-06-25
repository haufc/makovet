import org.craftercms.blueprints.headless.MailService

println "Processing Contact Us Request with values:"
println params

def service = new MailService()
// SMTP server information:
service.setHost('smtp.gmail.com')
service.setPort('587')
service.setEncoding('utf-8')

service.sendEmail(params.email, "keysoft.hotro@gmail.com", "hoandg@keysoft.vn", 
                  params.title ,"Họ Tên: " + params.name + "Số điện thoại: " + params.phone + " Tên công ty: " + params.company + " Nội dung: " + params.content)

def result=[:]
result.success = true
return result