package cn.itcast.web.servlet;

import cn.hutool.core.convert.Convert;
import cn.hutool.db.Entity;
import cn.hutool.db.PageResult;
import cn.hutool.extra.servlet.ServletUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.log.StaticLog;
import cn.itcast.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/findUserByPageServlet")
public class FindUserByPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 获取请求参数
        Integer currentPage = Convert.toInt(request.getParameter("currentPage"));
        if (currentPage == null) {
            currentPage=0;
        }
        Integer rows = Convert.toInt(request.getParameter("rows"));
        if (rows == null) {
            rows = 10;
        }
        Map<String, String> paramMap = ServletUtil.getParamMap(request);
        paramMap.remove("currentPage");
        paramMap.remove("rows");
        StaticLog.debug("查询条件：{}",paramMap);
        // 从spring容器中获取
        UserService userService = SpringUtil.getBean("userService");

        PageResult<Entity> pb=userService.findByPage(currentPage, rows,paramMap);
        StaticLog.debug("TotalPage：{}",pb.getTotalPage());
        StaticLog.debug("Total：{}",pb.getTotal());
        StaticLog.debug("Page：{}",pb.getPage());
        StaticLog.debug("PageSize：{}",pb.getPageSize());
        request.setAttribute("pb",pb);
        request.setAttribute("condition",paramMap);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
