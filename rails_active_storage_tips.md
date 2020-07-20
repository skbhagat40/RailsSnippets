usecase - we have a form, and we need a pdf for submission, but the pdf comes from backend.
Solution Approaches - 

1. Approach 1 - Generate the pdf, send it as - a. rails send_file b. rails send_data. with content disposition - iniline/attachment.(Octet stream, read it in 
frontend, convert to blob and store it in documents.)

2. Approach 2 - 

  @blob = ActiveStorage::Blob.create_after_upload(<my pdf file>) \
  return render json: {status=200, message='File uploaded successfully', data: {blob_id: @blob.id}}
  
 In the frontend store - 
 
 document = {blob_id: res['data']['blob_id']}
 
 then, when the application creating is complete, if it is successful do - 
 
 @application.documents.attach(ActiveStroage::Blob.find(params[:blob_id]). And we are done !!. Yay!!
