function onGithubLinkClick(link){
    window.open(url, '_blank').focus();
}

if(window.innerWidth<800){
    console.log("Found mobile screen");
    document.getElementById("know-me-description").innerHTML = "lorem ipsem I merged get to know me and heading know me";
}

console.log("Running js");