<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<body>
	<form:form action="/Ordenes/Cargar" method="post" modelAttribute="nuevaOrden">
		<form:label path="patente">Patente: </form:label>
		<form:input path="patente" />
		<br>
		
		<form:select path="propietario.dni">
			<c:forEach items="${listaProp}" var="prop">
				<form:option value="${prop.dni}">
					<c:out value="${prop.apellido} ${prop.nombre}"/>
				</form:option>
			</c:forEach>
		</form:select>
		<br>
		
		<form:label path="marca">Marca: </form:label>
		<form:input path="marca" />
		<br>
		
		<form:label path="modelo">Modelo: </form:label>
		<form:input path="modelo" />
		<br>
		
		<form:label path="detalle">Detalle: </form:label>
		<form:textarea path="detalle" />
		<br>
		
		<form:select path="empleado.id">
			<c:forEach items="${listaEmple}" var="emple">
				<form:option value="${emple.id}">
					<c:out value="${emple.apellido}"/>
				</form:option>
			</c:forEach>
		</form:select>
		<br>
		
		<input type="submit" value="Ingresar" />
	</form:form>
</body>
</html>