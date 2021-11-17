package com.ezen.myapp.aop;

import java.util.Arrays;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class BoardTimeCheckAdvice {

	private static final Logger logger = LoggerFactory.getLogger(BoardTimeCheckAdvice.class);
	
	@Around("execution(* com.ezen.myapp.service.BoardService*.*(..))")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable{		
		
		logger.info("BeforeAOP----------------------");
		logger.info(Arrays.toString(pjp.getArgs()));
		long startTime = System.currentTimeMillis();
		
		Object result = pjp.proceed();		
		
		long endTime = System.currentTimeMillis();
		logger.info("AfterAOP----------------------");
		logger.info(pjp.getSignature().getName()+":"+(endTime-startTime));
	//	logger.info(Arrays.toString(jp.getArgs()));
		
		return result;
	}
}
