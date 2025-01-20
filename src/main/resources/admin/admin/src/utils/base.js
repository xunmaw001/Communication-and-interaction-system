const base = {
    get() {
                return {
            url : "http://localhost:8080/springbootn4h17/",
            name: "springbootn4h17",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootn4h17/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "交流互动系统"
        } 
    }
}
export default base
