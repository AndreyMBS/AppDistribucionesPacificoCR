using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace BLL
{
    public class Email
    {

        //public void enviar(Cliente cliente, string urlImagen)
        //{
        //    try
        //    {
        //        //Crear instancia de un objeto mailMessage
        //        MailMessage email = new MailMessage();


        //        //Destinatarios
        //        email.To.Add(new MailAddress(cliente.email));
        //        email.To.Add(new MailAddress("plataformawebdistribuciones@gmail.com"));

        //        //Emisor
        //        email.From = new MailAddress("plataformawebdistribuciones@gmail.com");

        //        //Asunto
        //        email.Subject = "Datos de registro de CRMotos";

        //        //construir vista html del body
        //        string html = "Bienvenidos a Distribuciones Pacifico CR, XD gracias por formar parte de nuestros clientes.";
        //        html += "Para nosotros es un gusto servirles.";
        //        html += "<br>A continuacion detallamos los datos de registro en nuestra plataforma web";
        //        html += "<br><b>Cedula: <b>" + cliente.cedula;
        //        html += "<br><b>Cedula: <b>" + cliente.nombreCompleto;
        //        html += "<br><b>Telefono: <b>" + cliente.telefono;
        //        html += "<br><b>Email: <b>" + cliente.email;
        //        html += "<br><b>No responda a este correo, fue generado de forma automática ";
        //        html += "por la plataforma Distribuciones Pacifico CR.";
        //        html += "<br><br><img src='cid:imagen'/>";

        //        //indicar que el contenido es HTML
        //        email.IsBodyHtml = true;

        //        //Se indica la prioridad del email
        //        //No utilizar prioridad alta porque puede ser considerado SPAM 
        //        email.Priority = MailPriority.Normal;

        //        //Adjuntar archivo de la imagen al email
        //        Attachment item = new Attachment(urlImagen);

        //        //Se crea una instancia para la vista HTML del Email y le damos su contenido
        //        AlternateView htmlView = AlternateView.CreateAlternateViewFromString(html,
        //            Encoding.UTF8, MediaTypeNames.Text.Html);

        //        //Se crea una instancia para la imagen incrustada dentro del body del HTML
        //        LinkedResource img = new LinkedResource(urlImagen, MediaTypeNames.Image.Jpeg);
        //        img.ContentId = "imagen";

        //        //Se adjunta la imagen como recurso al contenido del HTML 
        //        htmlView.LinkedResources.Add(img);

        //        //Aqui podemos adjuntar un archivo al email
        //        email.Attachments.Add(item);

        //        //Se agrega la vista HTML al email
        //        email.AlternateViews.Add(htmlView);

        //        //Se realiza la configuracion del protocolo SMTP
        //        SmtpClient smtp = new SmtpClient();
        //        //Se indican los parametros de configuracion
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 587;
        //        smtp.EnableSsl = true;
        //        smtp.UseDefaultCredentials = false;
        //        smtp.Credentials = new NetworkCredential("plataformawebdistribuciones@gmail.com",
        //            "ucr2020.");

        //        //Aqui se realiza el envio del correo
        //        smtp.Send(email);

        //        //liberar memoria de los objetos
        //        email.Dispose();
        //        smtp.Dispose();


        //    }//Fin try 
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }//Fin catch
        //}

    }
}
