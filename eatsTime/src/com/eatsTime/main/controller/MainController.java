public class MainFrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // URI 요청 경로와 컨트롤러 매핑
    private Map<String, MainController> controllers = new HashMap<>();

    public MainFrontController() {
        // 메인 페이지
        controllers.put("/", new MainController() {
            public String execute(HttpServletRequest request, HttpServletResponse response) {
                // ...
            }
        });

        // 배너 페이지
        controllers.put("/banner", new BannerController());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 요청 URI 경로 추출
        String uri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String path = uri.substring(contextPath.length());

        // 매핑된 컨트롤러 실행
        MainController controller = controllers.get(path);
        String view = controller.execute(request, response);

        // JSP 페이지 출력
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}