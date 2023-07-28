tinymce.init({
  selector: "textarea#tiny",
  language: "ko_KR",
  height: 700,
  resize: false,
  plugins: [
    "advlist",
    "autolink",
    "lists",
    "link",
    "image",
    "charmap",
    "preview",
    "anchor",
    "searchreplace",
    "visualblocks",
    "code",
    "fullscreen",
    "insertdatetime",
    "media",
    "table",
    "help",
    "wordcount",
    "emoticons",
  ],
  toolbar:
    "undo redo | blocks typography fontsize | bold italic underline strikethrough | forecolor backcolor | alignleft aligncenter alignright alignjustify | bullist numlist | outdent indent | charmap emoticons | removeformat",
  content_style:
    "body { font-family:Helvetica,Arial,sans-serif; font-size:16px }",
});
