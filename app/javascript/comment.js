const buildHTML = (XHR) => {
  const comment = XHR.response.comment;
  const user = XHR.response.user;
  const html = `
        <p>
        <a href="/users/${comment.user_id}">${user.name}</a>
        ${comment.text}
        </p>`;
  return html;
};

function post (){
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const form = document.getElementById("form");
    const blog = document.getElementById("blog");
    const blogId = blog.getAttribute("value");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", `/blogs/${blogId}/comments`, true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
        if (XHR.status != 200) {
          alert(`Error ${XHR.status}: ${XHR.statusText}`);
          return null;
        };
        const list = document.getElementById("list");
        const formText = document.getElementById("comment_text");
        list.insertAdjacentHTML("afterend", buildHTML(XHR));
    formText.value = "";
    };
  });
};
   
   window.addEventListener('load', post);