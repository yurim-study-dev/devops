static void main(String[] args){
    System.out.println("Hello");
    // 런타임 시스템 환경 변수(PORT) 조회 (없으면 null 반환)
    String port = System.getenv("PORT");
    System.out.println(port + "로 서버 구동");
}